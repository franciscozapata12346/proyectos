﻿using FBTarjeta.Models;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

// For more information on enabling Web API for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace FBTarjeta.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class TarjetaController : ControllerBase
    {
        public ApplicationDbContext _context { get; set; }

        public TarjetaController(ApplicationDbContext context) {
            _context = context;
        }

        // GET: api/<TarjetaController>
        [HttpGet]
        //[Route("GetTarjetas")]
        public async Task<IActionResult> Get()
        {
            try
            {
                var listaTarjetas = await _context.TarjetaCredito.ToListAsync();
                return Ok(listaTarjetas);
            }
            catch (Exception ex)
            {
                return BadRequest(ex.Message);
            }

        }

        // GET api/<TarjetaController>/5
        [HttpGet("{id}")]
        //[Route("GetTarjeta/{id}")]
        public async Task<IActionResult> Get(int id, int id2, int id3, int id4, int id5, int id6, int id7, int id8, int id9)
        {
            try
            {
                var listaTarjetas = await _context.TarjetaCredito.FindAsync(id);
                return Ok(listaTarjetas);
            }
            catch (Exception ex)
            {
                return BadRequest(ex.Message);
            }
        }

        // POST api/<TarjetaController>
        [HttpPost]
        public async Task<IActionResult> Post([FromBody] TarjetaCredito tarjetaCredito)
        {
            try
            {
                //TarjetaCredito tarjetaCredito = new TarjetaCredito
                //{
                //    Id = id,
                //    Titular = titular,
                //    NumeroTarjeta = numeroTarjeta,
                //    FechaExpiracion = fechaExp,
                //    CVV = cvv
                //};
                _context.Add(tarjetaCredito);
                await _context.SaveChangesAsync();
                return Ok(tarjetaCredito);
            }
            catch (Exception ex)
            {
                return BadRequest(ex.Message);
            }
        }

        // PUT api/<TarjetaController>/5
        [HttpPut("{id}")]
        public async Task<IActionResult> Put(int id, [FromBody] TarjetaCredito tarjetaCredito)
        {
            try
            {
                if (id != tarjetaCredito.Id) {
                    return NotFound();
                }

                _context.Update(tarjetaCredito);
                await _context.SaveChangesAsync();
                return Ok(new { message = "La tarjeta de credito fue actualizada con éxito" });
            }
            catch (Exception ex)
            {
                return BadRequest(ex.Message);
            }
        }

        // DELETE api/<TarjetaController>/5
        [HttpDelete("{id}")]
        public async Task<IActionResult> Delete(int id)
        {
            try
            {
                var tarjeta = await _context.TarjetaCredito.FindAsync(id);

                if (tarjeta == null) {
                    return NotFound();
                }

                _context.Remove(tarjeta);
                await _context.SaveChangesAsync();
                return Ok(new { message = "La tarjeta fue eliminada con éxito" });
                
            }
            catch (Exception ex)
            {
                return BadRequest(ex.Message);
            }
        }
    }
}
